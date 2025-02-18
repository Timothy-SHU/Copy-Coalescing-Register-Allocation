; ModuleID = 'DTDAttDef.cpp'
source_filename = "DTDAttDef.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DTDAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_79DTDAttDef11getFullNameEv = comdat any

$_ZN11xercesc_2_79DTDAttDef5resetEv = comdat any

$_ZNK11xercesc_2_79DTDAttDef17getDOMTypeInfoUriEv = comdat any

$_ZNK11xercesc_2_79DTDAttDef18getDOMTypeInfoNameEv = comdat any

@_ZTVN11xercesc_2_79DTDAttDefE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79DTDAttDefE, ptr @_ZN11xercesc_2_79DTDAttDefD2Ev, ptr @_ZN11xercesc_2_79DTDAttDefD0Ev, ptr @_ZNK11xercesc_2_79DTDAttDef14isSerializableEv, ptr @_ZN11xercesc_2_79DTDAttDef9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_79DTDAttDef12getProtoTypeEv, ptr @_ZNK11xercesc_2_79DTDAttDef11getFullNameEv, ptr @_ZN11xercesc_2_79DTDAttDef5resetEv, ptr @_ZNK11xercesc_2_79DTDAttDef17getDOMTypeInfoUriEv, ptr @_ZNK11xercesc_2_79DTDAttDef18getDOMTypeInfoNameEv] }, align 8
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"DTDAttDef\00", align 1
@_ZN11xercesc_2_79DTDAttDef14classDTDAttDefE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_79DTDAttDef12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79DTDAttDefE = dso_local constant [26 x i8] c"N11xercesc_2_79DTDAttDefE\00", align 1
@_ZTIN11xercesc_2_79XMLAttDefE = external constant ptr
@_ZTIN11xercesc_2_79DTDAttDefE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79DTDAttDefE, ptr @_ZTIN11xercesc_2_79XMLAttDefE }, align 8

@_ZN11xercesc_2_79DTDAttDefC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79DTDAttDefC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_79DTDAttDefC1EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_79DTDAttDefC2EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE
@_ZN11xercesc_2_79DTDAttDefC1EPKtS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr, ptr), ptr @_ZN11xercesc_2_79DTDAttDefC2EPKtS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE
@_ZN11xercesc_2_79DTDAttDefD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DTDAttDefD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDefC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i32 noundef 4, ptr noundef %1)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79DTDAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 1
  %4 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !38
  store i32 %4, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !50
  ret void
}

declare void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDefC2EPKtNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79DTDAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 1
  %7 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !38
  store i32 %7, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %1, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %5
  %13 = load i16, ptr %1, align 2, !tbaa !52
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !52
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !54

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27)
          to label %32 unwind label %35

32:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false)
  br label %33

33:                                               ; preds = %32, %5
  %34 = phi ptr [ %31, %32 ], [ null, %5 ]
  store ptr %34, ptr %8, align 8, !tbaa !50
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  resume { ptr, i32 } %36
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDefC2EPKtS2_NS_9XMLAttDef8AttTypesENS3_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79DTDAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 1
  %9 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !38
  store i32 %9, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %1, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %7
  %15 = load i16, ptr %1, align 2, !tbaa !52
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !52
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !54

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
          to label %34 unwind label %37

34:                                               ; preds = %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %35

35:                                               ; preds = %34, %7
  %36 = phi ptr [ %33, %34 ], [ null, %7 ]
  store ptr %36, ptr %10, align 8, !tbaa !50
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  resume { ptr, i32 } %38
}

declare void @_ZN11xercesc_2_79XMLAttDefC2EPKtNS0_8AttTypesENS0_11DefAttTypesES2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79DTDAttDefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79XMLAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #11
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDefD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_79DTDAttDefD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDef7setNameEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = load ptr, ptr %4, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6)
  %10 = load ptr, ptr %3, align 8, !tbaa !51
  %11 = icmp eq ptr %1, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load i16, ptr %1, align 2, !tbaa !52
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !52
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !54

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false)
  br label %32

32:                                               ; preds = %2, %26
  %33 = phi ptr [ %31, %26 ], [ null, %2 ]
  store ptr %33, ptr %5, align 8, !tbaa !50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DTDAttDef12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %0)
  invoke void @_ZN11xercesc_2_79XMLAttDefC2ENS0_8AttTypesENS0_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0, i32 noundef 4, ptr noundef %0)
          to label %3 unwind label %7

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_79DTDAttDefE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %2, i64 0, i32 1
  %5 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !38
  store i32 %5, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %2, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !50
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #10
  resume { ptr, i32 } %8
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DTDAttDef14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_79DTDAttDef12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_79DTDAttDef14classDTDAttDefE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DTDAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %5 = load i16, ptr %1, align 8, !tbaa !57
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 1
  br i1 %6, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, ptr %7, align 8, !tbaa !41
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %12, i32 noundef 0, i1 noundef zeroext false)
  br label %16

13:                                               ; preds = %2
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %16

16:                                               ; preds = %13, %8
  ret void
}

declare void @_ZN11xercesc_2_79XMLAttDef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79DTDAttDef11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDAttDef", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DTDAttDef5resetEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79DTDAttDef17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79DTDAttDef18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %3, ptr noundef %5)
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 56}
!42 = !{!"_ZTSN11xercesc_2_79DTDAttDefE", !43, i64 0, !39, i64 56, !49, i64 64}
!43 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !44, i64 0, !45, i64 8, !46, i64 12, !47, i64 16, !48, i64 20, !48, i64 21, !39, i64 24, !49, i64 32, !49, i64 40, !49, i64 48}
!44 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!45 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !40, i64 0}
!46 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !40, i64 0}
!47 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !40, i64 0}
!48 = !{!"bool", !40, i64 0}
!49 = !{!"any pointer", !40, i64 0}
!50 = !{!42, !49, i64 64}
!51 = !{!43, !49, i64 48}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !40, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !53, i64 0}
!58 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !53, i64 0, !53, i64 2, !49, i64 8, !49, i64 16, !49, i64 24, !59, i64 32, !59, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !39, i64 96}
!59 = !{!"long", !40, i64 0}
!60 = !{!43, !46, i64 12}
