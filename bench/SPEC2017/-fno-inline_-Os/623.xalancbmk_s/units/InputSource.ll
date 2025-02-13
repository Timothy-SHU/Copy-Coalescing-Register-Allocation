; ModuleID = 'InputSource.cpp'
source_filename = "InputSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::InputSource" = type <{ ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }>

$_ZNK11xercesc_2_711InputSource11getEncodingEv = comdat any

$_ZNK11xercesc_2_711InputSource11getPublicIdEv = comdat any

$_ZNK11xercesc_2_711InputSource11getSystemIdEv = comdat any

$_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv = comdat any

$_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_711InputSourceE = dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711InputSourceE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, ptr @_ZN11xercesc_2_711InputSourceD0Ev, ptr @__cxa_pure_virtual, ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv, ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv, ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv, ptr @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv, ptr @_ZN11xercesc_2_711InputSource11setEncodingEPKt, ptr @_ZN11xercesc_2_711InputSource11setPublicIdEPKt, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711InputSourceE = dso_local constant [29 x i8] c"N11xercesc_2_711InputSourceE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711InputSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711InputSourceE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8

@_ZN11xercesc_2_711InputSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711InputSourceD2Ev

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  tail call void @llvm.trap() #8
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711InputSource11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711InputSource28getIssueFatalErrorIfNotFoundEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !53, !range !54, !noundef !55
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSource11setEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr %4, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !57
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #9
  store ptr %11, ptr %5, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSource11setPublicIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = load ptr, ptr %4, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !57
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #9
  store ptr %11, ptr %5, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !60 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = load ptr, ptr %4, align 8, !tbaa !58
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !57
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #9
  store ptr %11, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711InputSource28setIssueFatalErrorIfNotFoundEb(ptr noundef nonnull align 8 dereferenceable(41) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !60 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #9
          to label %9 unwind label %24

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !57
  %11 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = load ptr, ptr %10, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #9
          to label %16 unwind label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !57
  %18 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = load ptr, ptr %17, align 8, !tbaa !58
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19) #9
          to label %23 unwind label %24

23:                                               ; preds = %16
  ret void

24:                                               ; preds = %16, %9, %1
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #8
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !63

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #9
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !64 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !65

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !66
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !68

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !66
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !69, !llvm.loop !70

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i8 1, ptr %5, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i8 1, ptr %7, align 8, !tbaa !53
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #9
  store ptr %8, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i8 1, ptr %9, align 8, !tbaa !53
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #9
  store ptr %10, ptr %7, align 8, !tbaa !49
  %11 = load ptr, ptr %5, align 8, !tbaa !57
  %12 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11) #9
  store ptr %12, ptr %8, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !60 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i8 1, ptr %7, align 8, !tbaa !53
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #9
  store ptr %8, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711InputSourceC2EPKcS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTVN11xercesc_2_711InputSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::InputSource", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i8 1, ptr %9, align 8, !tbaa !53
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #9
  store ptr %10, ptr %7, align 8, !tbaa !49
  %11 = load ptr, ptr %5, align 8, !tbaa !57
  %12 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11) #9
  store ptr %12, ptr %8, align 8, !tbaa !51
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

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
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!38 = !{ptr @_ZN11xercesc_2_711InputSourceC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!39 = !{ptr @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!40 = !{ptr @_ZN11xercesc_2_711InputSourceC2EPKcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE, i64 2}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 3}
!43 = !{!44, !45, i64 16}
!44 = !{!"_ZTSN11xercesc_2_711InputSourceE", !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !48, i64 40}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"bool", !46, i64 0}
!49 = !{!44, !45, i64 24}
!50 = !{!"function_entry_count", i64 13}
!51 = !{!44, !45, i64 32}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!44, !48, i64 40}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!44, !45, i64 8}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !47, i64 0}
!60 = !{!"function_entry_count", i64 2}
!61 = !{!"function_entry_count", i64 5}
!62 = !{!"function_entry_count", i64 558789}
!63 = !{!"branch_weights", i32 158605, i32 400186}
!64 = !{!"function_entry_count", i64 2453164456}
!65 = !{!"branch_weights", i32 1, i32 -1841802839}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !46, i64 0}
!68 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!69 = !{!"branch_weights", i32 408669070, i32 -279908792}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"function_entry_count", i64 5836268}
