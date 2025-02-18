; ModuleID = 'StringPool.cpp'
source_filename = "StringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_ = comdat any

$_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool6existsEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool6existsEj = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj = comdat any

$_ZNK11xercesc_2_713XMLStringPool14getStringCountEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_713XMLStringPoolE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLStringPoolE, ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD0Ev, ptr @_ZNK11xercesc_2_713XMLStringPool14isSerializableEv, ptr @_ZN11xercesc_2_713XMLStringPool9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713XMLStringPool12getProtoTypeEv, ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZNK11xercesc_2_713XMLStringPool6existsEPKt, ptr @_ZNK11xercesc_2_713XMLStringPool6existsEj, ptr @_ZN11xercesc_2_713XMLStringPool8flushAllEv, ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @_ZNK11xercesc_2_713XMLStringPool14getStringCountEv] }, align 8
@.str = private unnamed_addr constant [14 x i8] c"XMLStringPool\00", align 1
@_ZN11xercesc_2_713XMLStringPool18classXMLStringPoolE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_713XMLStringPool12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XMLStringPoolE = dso_local constant [31 x i8] c"N11xercesc_2_713XMLStringPoolE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_713XMLStringPoolE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLStringPoolE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/StringPool.hpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1

@_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE
@_ZN11xercesc_2_713XMLStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev
@_ZN11xercesc_2_713XMLStringPoolC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713XMLStringPoolC2EPNS_13MemoryManagerE

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 64, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  store i32 1, ptr %7, align 4, !tbaa !62
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2)
  %9 = load ptr, ptr %4, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %1, i1 noundef zeroext false, ptr noundef %9)
          to label %10 unwind label %23, !prof !63

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  store ptr %8, ptr %11, align 8, !tbaa !64
  %12 = load ptr, ptr %4, align 8, !tbaa !55
  %13 = load i32, ptr %6, align 8, !tbaa !61
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %12, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %15), !prof !65
  store ptr %19, ptr %5, align 8, !tbaa !66
  %20 = load i32, ptr %6, align 8, !tbaa !61
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %22, i1 false), !prof !67
  ret void

23:                                               ; preds = %3
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %2) #15
  resume { ptr, i32 } %24
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !71
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !73
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !74
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %12 = load ptr, ptr %0, align 8, !tbaa !68
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %15, !prof !63

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !76
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %8, !prof !77

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %31, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %36, !prof !78

12:                                               ; preds = %5, %31
  %13 = phi i64 [ 1, %5 ], [ %32, %31 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !55
  %15 = load ptr, ptr %7, align 8, !tbaa !66
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = load ptr, ptr %14, align 8, !tbaa !52
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %19)
          to label %23 unwind label %50, !prof !82

23:                                               ; preds = %12
  %24 = load ptr, ptr %6, align 8, !tbaa !55
  %25 = load ptr, ptr %7, align 8, !tbaa !66
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = load ptr, ptr %24, align 8, !tbaa !52
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %27)
          to label %31 unwind label %50, !prof !82

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %13, 1
  %33 = load i32, ptr %2, align 4, !tbaa !62
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %12, label %8, !prof !83, !llvm.loop !84

36:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %40 unwind label %37, !prof !63

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #16
  unreachable

40:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %10) #15
  br label %41

41:                                               ; preds = %40, %8
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !66
  %46 = load ptr, ptr %43, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %45)
          to label %49 unwind label %52, !prof !87

49:                                               ; preds = %41
  ret void

50:                                               ; preds = %12, %23
  %51 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

52:                                               ; preds = %41
  %53 = landingpad { ptr, i32 }
          catch ptr null
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %51, %50 ], [ %53, %52 ]
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #16
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !88 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %9, label %5, !prof !91

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 4, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  ret void

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %29, %9 ], [ 1, %1 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %11, align 8, !tbaa !55
  %14 = load ptr, ptr %12, align 8, !tbaa !66
  %15 = getelementptr inbounds ptr, ptr %14, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = load ptr, ptr %13, align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
  %22 = load ptr, ptr %11, align 8, !tbaa !55
  %23 = load ptr, ptr %12, align 8, !tbaa !66
  %24 = getelementptr inbounds ptr, ptr %23, i64 %10
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = load ptr, ptr %22, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %25)
  %29 = add nuw nsw i64 %10, 1
  %30 = load i32, ptr %2, align 4, !tbaa !62
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %9, label %5, !prof !91, !llvm.loop !92
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #8 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !94

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !95

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !75
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !72
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !96

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = load i8, ptr %11, align 8, !tbaa !71, !range !99, !noundef !100
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !101

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !102
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !68
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !82
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !101, !llvm.loop !103

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !72
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !79
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !73
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !104, !llvm.loop !105

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !106 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %30, !prof !107

8:                                                ; preds = %2
  %9 = uitofp i32 %6 to double
  %10 = fmul double %9, 1.500000e+00
  %11 = fptoui double %10 to i32
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %13, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15), !prof !108
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %15, i1 false), !prof !109
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !66
  %22 = load i32, ptr %5, align 8, !tbaa !61
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %21, i64 %24, i1 false), !prof !110
  %25 = load ptr, ptr %12, align 8, !tbaa !55
  %26 = load ptr, ptr %20, align 8, !tbaa !66
  %27 = load ptr, ptr %25, align 8, !tbaa !52
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %26), !prof !111
  store ptr %19, ptr %20, align 8, !tbaa !66
  store i32 %11, ptr %5, align 8, !tbaa !61
  br label %30

30:                                               ; preds = %8, %2
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef 16), !prof !112
  %37 = load i32, ptr %3, align 4, !tbaa !62
  store i32 %37, ptr %36, align 8, !tbaa !113
  %38 = load ptr, ptr %31, align 8, !tbaa !55
  %39 = icmp eq ptr %1, null
  br i1 %39, label %60, label %40, !prof !114

40:                                               ; preds = %30
  %41 = load i16, ptr %1, align 2, !tbaa !115
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %54, label %43, !prof !117

43:                                               ; preds = %40, %43
  %44 = phi ptr [ %45, %43 ], [ %1, %40 ]
  %45 = getelementptr inbounds i16, ptr %44, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !115
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %43, !prof !118, !llvm.loop !119

48:                                               ; preds = %43
  %49 = ptrtoint ptr %45 to i64
  %50 = ptrtoint ptr %1 to i64
  %51 = sub i64 %49, %50
  %52 = add i64 %51, 2
  %53 = and i64 %52, 8589934590
  br label %54

54:                                               ; preds = %48, %40
  %55 = phi i64 [ %53, %48 ], [ 2, %40 ]
  %56 = load ptr, ptr %38, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %55), !prof !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %59, ptr nonnull align 2 %1, i64 %55, i1 false), !prof !120
  br label %60

60:                                               ; preds = %30, %54
  %61 = phi ptr [ %59, %54 ], [ null, %30 ]
  %62 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %36, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !80
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef %61, ptr noundef nonnull %36)
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !66
  %67 = load i32, ptr %3, align 4, !tbaa !62
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  store ptr %36, ptr %69, align 8, !tbaa !79
  %70 = add i32 %67, 1
  store i32 %70, ptr %3, align 4, !tbaa !62
  %71 = load i32, ptr %36, align 8, !tbaa !113
  ret i32 %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !106 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !75
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !121

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = load i32, ptr %4, align 8, !tbaa !73
  %16 = load ptr, ptr %0, align 8, !tbaa !68
  %17 = load ptr, ptr %14, align 8, !tbaa !52
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !122
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !123

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !76
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = load ptr, ptr %28, align 8, !tbaa !52
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !125
  br i1 %34, label %39, label %35, !prof !126

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !127, !llvm.loop !128

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !101

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !71, !range !99, !noundef !100
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !102
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #17
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !102
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !124
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !68
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !112
  %58 = load ptr, ptr %20, align 8, !tbaa !72
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !79
  store ptr %2, ptr %57, align 8, !tbaa !102
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !97
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !124
  store ptr %57, ptr %59, align 8, !tbaa !79
  %63 = load i32, ptr %8, align 8, !tbaa !75
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !75
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLStringPool12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #1 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %0)
  invoke void @_ZN11xercesc_2_713XMLStringPoolC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #15
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !88 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713XMLStringPool12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !88 {
  ret ptr @_ZN11xercesc_2_713XMLStringPool18classXMLStringPoolE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPool9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #1 align 2 !prof !88 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = load i16, ptr %1, align 8, !tbaa !129
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !62
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %11)
  %13 = load i32, ptr %10, align 4, !tbaa !62
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %43

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %21, %15 ], [ 1, %9 ]
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 10
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %16)
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %20, i32 noundef 0, i1 noundef zeroext false)
  %21 = add nuw i32 %16, 1
  %22 = load i32, ptr %10, align 4, !tbaa !62
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %15, label %43, !llvm.loop !132

24:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %25 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %26 = load i32, ptr %5, align 4, !tbaa !133
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  br label %31

30:                                               ; preds = %31, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %43

31:                                               ; preds = %28, %31
  %32 = phi i32 [ 1, %28 ], [ %40, %31 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %33 = load ptr, ptr %6, align 8, !tbaa !79
  %34 = call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %33)
  %35 = load ptr, ptr %29, align 8, !tbaa !55
  %36 = load ptr, ptr %6, align 8, !tbaa !79
  %37 = load ptr, ptr %35, align 8, !tbaa !52
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %36)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  %40 = add nuw i32 %32, 1
  %41 = load i32, ptr %5, align 4, !tbaa !133
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %31, label %30, !llvm.loop !134

43:                                               ; preds = %15, %9, %30
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 64, ptr %5, align 8, !tbaa !61
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 4, !tbaa !62
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1)
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef 109, i1 noundef zeroext false, ptr noundef %8)
          to label %9 unwind label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  store ptr %7, ptr %10, align 8, !tbaa !64
  %11 = load ptr, ptr %3, align 8, !tbaa !55
  %12 = load i32, ptr %5, align 8, !tbaa !61
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = load ptr, ptr %11, align 8, !tbaa !52
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %14)
  store ptr %18, ptr %4, align 8, !tbaa !66
  %19 = load i32, ptr %5, align 8, !tbaa !61
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %21, i1 false)
  ret void

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %1) #15
  resume { ptr, i32 } %23
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !135 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !73
  %9 = load ptr, ptr %4, align 8, !tbaa !68
  %10 = load ptr, ptr %6, align 8, !tbaa !52
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !136
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19, !prof !137

19:                                               ; preds = %2, %28
  %20 = phi ptr [ %30, %28 ], [ %17, %2 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !76
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = load ptr, ptr %21, align 8, !tbaa !52
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23), !prof !138
  br i1 %27, label %32, label %28, !prof !139

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !prof !140, !llvm.loop !128

32:                                               ; preds = %28, %19, %2
  %33 = phi ptr [ null, %2 ], [ %20, %19 ], [ null, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !141

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !102
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !142

40:                                               ; preds = %37
  %41 = load i32, ptr %38, align 8, !tbaa !113
  br label %44

42:                                               ; preds = %37
  %43 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool6existsEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  ret i1 %5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool6existsEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #13 comdat align 2 !prof !143 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false, !prof !144
  ret i1 %7
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !145 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !73
  %9 = load ptr, ptr %4, align 8, !tbaa !68
  %10 = load ptr, ptr %6, align 8, !tbaa !52
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !146
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !79
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19, !prof !137

19:                                               ; preds = %2, %28
  %20 = phi ptr [ %30, %28 ], [ %17, %2 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !76
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = load ptr, ptr %21, align 8, !tbaa !52
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23), !prof !147
  br i1 %27, label %32, label %28, !prof !139

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !prof !140, !llvm.loop !128

32:                                               ; preds = %28, %19, %2
  %33 = phi ptr [ null, %2 ], [ %20, %19 ], [ null, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !141

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !102
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !148

40:                                               ; preds = %37
  %41 = load i32, ptr %38, align 8, !tbaa !113
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false, !prof !150
  br i1 %7, label %15, label %8, !prof !150

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 89, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  ret ptr %22
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool14getStringCountEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !62
  %4 = add i32 %3, -1
  ret i32 %4
}

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !73
  %7 = load ptr, ptr %0, align 8, !tbaa !68
  %8 = load ptr, ptr %4, align 8, !tbaa !52
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !76
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = load ptr, ptr %18, align 8, !tbaa !52
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %38, label %25

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !llvm.loop !151

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !76
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  %34 = load ptr, ptr %31, align 8, !tbaa !52
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33)
  br i1 %37, label %38, label %25, !llvm.loop !151

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !88 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !88 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !52
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !78

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !68
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !65
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !72
  %21 = load i32, ptr %12, align 8, !tbaa !73
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !155

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !72
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !79
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !156, !llvm.loop !157
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = load ptr, ptr %2, align 8, !tbaa !52
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !87
  store ptr null, ptr %3, align 8, !tbaa !72
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !78

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !52
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15, !prof !158
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8), !prof !159
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %12, ptr %2, align 8, !tbaa !160
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !162
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false), !prof !163
  %15 = load i32, ptr %3, align 8, !tbaa !73
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !164

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = load ptr, ptr %2, align 8, !tbaa !160
  store ptr null, ptr %2, align 8, !tbaa !160
  store ptr %23, ptr %21, align 8, !tbaa !72
  store i32 %5, ptr %3, align 8, !tbaa !73
  %24 = load ptr, ptr %0, align 8, !tbaa !68
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58, !prof !165

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !72
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34, !prof !166

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = load ptr, ptr %19, align 8, !tbaa !76
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !124
  %41 = load ptr, ptr %0, align 8, !tbaa !68
  %42 = load ptr, ptr %38, align 8, !tbaa !52
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50, !prof !167

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  store ptr %48, ptr %36, align 8, !tbaa !97
  store ptr %35, ptr %47, align 8, !tbaa !79
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !prof !168, !llvm.loop !169

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !73
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !prof !170, !llvm.loop !171

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !172

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #16
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!36 = !{ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, i64 10}
!37 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj, i64 10}
!38 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!39 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 10}
!40 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv, i64 10}
!41 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!42 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD0Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, i64 5}
!43 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!44 = !{ptr @_ZN11xercesc_2_713XMLStringPool8flushAllEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv, i64 2}
!45 = !{ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_, i64 290}
!46 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv, i64 2}
!47 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 276}
!48 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv, i64 10}
!49 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv, ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev, i64 2}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 10}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !58, i64 8}
!56 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !57, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !60, i64 32, !60, i64 36}
!57 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !54, i64 0}
!60 = !{!"int", !59, i64 0}
!61 = !{!56, !60, i64 32}
!62 = !{!56, !60, i64 36}
!63 = !{!"branch_weights", i32 10, i32 0}
!64 = !{!56, !58, i64 24}
!65 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!66 = !{!56, !58, i64 16}
!67 = !{!"VP", i32 1, i64 10, i64 512, i64 10}
!68 = !{!69, !58, i64 0}
!69 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !58, i64 0, !70, i64 8, !58, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !58, i64 40}
!70 = !{!"bool", !59, i64 0}
!71 = !{!69, !70, i64 8}
!72 = !{!69, !58, i64 16}
!73 = !{!69, !60, i64 24}
!74 = !{!69, !60, i64 28}
!75 = !{!69, !60, i64 32}
!76 = !{!69, !58, i64 40}
!77 = !{!"branch_weights", i32 159, i32 1}
!78 = !{!"branch_weights", i32 0, i32 10}
!79 = !{!58, !58, i64 0}
!80 = !{!81, !58, i64 8}
!81 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !60, i64 0, !58, i64 8}
!82 = !{!"VP", i32 0, i64 290, i64 -7405368087501025645, i64 290}
!83 = !{!"branch_weights", i32 4481, i32 159}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!"function_entry_count", i64 5}
!90 = !{!"function_entry_count", i64 2}
!91 = !{!"branch_weights", i32 0, i32 1}
!92 = distinct !{!92, !85, !86}
!93 = !{!"function_entry_count", i64 12}
!94 = !{!"branch_weights", i32 3, i32 9}
!95 = !{!"branch_weights", i32 1, i32 143}
!96 = !{!"branch_weights", i32 1018, i32 290}
!97 = !{!98, !58, i64 8}
!98 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !58, i64 0, !58, i64 8, !58, i64 16}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = !{!"branch_weights", i32 290, i32 0}
!102 = !{!98, !58, i64 0}
!103 = distinct !{!103, !85, !86}
!104 = !{!"branch_weights", i32 20785, i32 143}
!105 = distinct !{!105, !85, !86}
!106 = !{!"function_entry_count", i64 290}
!107 = !{!"branch_weights", i32 4, i32 286}
!108 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!109 = !{!"VP", i32 1, i64 4, i64 513, i64 4}
!110 = !{!"VP", i32 1, i64 4, i64 513, i64 3, i64 512, i64 1}
!111 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!112 = !{!"VP", i32 0, i64 290, i64 8345045103670217670, i64 290}
!113 = !{!81, !60, i64 0}
!114 = !{!"branch_weights", i32 0, i32 290}
!115 = !{!116, !116, i64 0}
!116 = !{!"short", !59, i64 0}
!117 = !{!"branch_weights", i32 8, i32 282}
!118 = !{!"branch_weights", i32 282, i32 5929}
!119 = distinct !{!119, !85, !86}
!120 = !{!"VP", i32 1, i64 290, i64 65, i64 110, i64 17, i64 73, i64 9, i64 37, i64 33, i64 19}
!121 = !{!"branch_weights", i32 288, i32 2}
!122 = !{!"VP", i32 0, i64 290, i64 3024540859536234746, i64 290}
!123 = !{!"branch_weights", i32 165, i32 125}
!124 = !{!98, !58, i64 16}
!125 = !{!"VP", i32 0, i64 125, i64 -1309333655503989351, i64 125}
!126 = !{!"branch_weights", i32 0, i32 125}
!127 = !{!"branch_weights", i32 125, i32 0}
!128 = distinct !{!128, !85, !86}
!129 = !{!130, !116, i64 0}
!130 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !116, i64 0, !116, i64 2, !58, i64 8, !58, i64 16, !58, i64 24, !131, i64 32, !131, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !60, i64 96}
!131 = !{!"long", !59, i64 0}
!132 = distinct !{!132, !85, !86}
!133 = !{!60, !60, i64 0}
!134 = distinct !{!134, !85, !86}
!135 = !{!"function_entry_count", i64 1690}
!136 = !{!"VP", i32 0, i64 1690, i64 3024540859536234746, i64 1690}
!137 = !{!"branch_weights", i32 1, i32 289}
!138 = !{!"VP", i32 0, i64 1690, i64 -1309333655503989351, i64 1690}
!139 = !{!"branch_weights", i32 1798124, i32 508}
!140 = !{!"branch_weights", i32 289, i32 1798343}
!141 = !{!"branch_weights", i32 290, i32 1798124}
!142 = !{!"branch_weights", i32 276, i32 1414}
!143 = !{!"function_entry_count", i64 2059100}
!144 = !{!"branch_weights", i32 2059100, i32 0}
!145 = !{!"function_entry_count", i64 579899}
!146 = !{!"VP", i32 0, i64 579899, i64 3024540859536234746, i64 579899}
!147 = !{!"VP", i32 0, i64 579969, i64 -1309333655503989351, i64 579969}
!148 = !{!"branch_weights", i32 0, i32 579899}
!149 = !{!"function_entry_count", i64 2060280}
!150 = !{!"branch_weights", i32 2060280, i32 0}
!151 = distinct !{!151, !85, !86}
!152 = !{!153, !58, i64 40}
!153 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !154, i64 8, !58, i64 16, !60, i64 24, !58, i64 32, !58, i64 40}
!154 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !59, i64 0}
!155 = !{!"branch_weights", i32 1, i32 159}
!156 = !{!"branch_weights", i32 159, i32 15809}
!157 = distinct !{!157, !85, !86}
!158 = !{!"VP", i32 0, i64 10, i64 -5147776714887549805, i64 10}
!159 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!160 = !{!161, !58, i64 0}
!161 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEE", !58, i64 0, !58, i64 8}
!162 = !{!161, !58, i64 8}
!163 = !{!"VP", i32 1, i64 2, i64 513, i64 2}
!164 = !{!"branch_weights", i32 1, i32 127}
!165 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!166 = !{!"branch_weights", i32 83, i32 244}
!167 = !{!"VP", i32 0, i64 244, i64 3024540859536234746, i64 244}
!168 = !{!"branch_weights", i32 244, i32 0}
!169 = distinct !{!169, !85, !86}
!170 = !{!"branch_weights", i32 20801, i32 127}
!171 = distinct !{!171, !85, !86}
!172 = !{!"branch_weights", i32 2, i32 0}
