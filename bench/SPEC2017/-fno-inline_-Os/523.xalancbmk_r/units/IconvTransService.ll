; ModuleID = 'IconvTransService.cpp'
source_filename = "IconvTransService.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTVN11xercesc_2_717IconvTransServiceE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717IconvTransServiceE, ptr @_ZN11xercesc_2_717IconvTransServiceD2Ev, ptr @_ZN11xercesc_2_717IconvTransServiceD0Ev, ptr @_ZN11xercesc_2_717IconvTransService14compareIStringEPKtS2_, ptr @_ZN11xercesc_2_717IconvTransService15compareNIStringEPKtS2_j, ptr @_ZNK11xercesc_2_717IconvTransService5getIdEv, ptr @_ZNK11xercesc_2_717IconvTransService7isSpaceEt, ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv, ptr @_ZNK11xercesc_2_717IconvTransService14supportsSrcOfsEv, ptr @_ZNK11xercesc_2_717IconvTransService9upperCaseEPt, ptr @_ZNK11xercesc_2_717IconvTransService9lowerCaseEPt, ptr @_ZN11xercesc_2_717IconvTransService20makeNewXMLTranscoderEPKtRNS_15XMLTransService5CodesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715XMLTransService16initTransServiceEv] }, align 8
@_ZN11xercesc_2_7L12gMyServiceIdE = internal constant [6 x i16] [i16 73, i16 67, i16 111, i16 110, i16 118, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_718IconvLCPTranscoderE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718IconvLCPTranscoderE, ptr @_ZN11xercesc_2_718IconvLCPTranscoderD2Ev, ptr @_ZN11xercesc_2_718IconvLCPTranscoderD0Ev, ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKt, ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKc, ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPcjPNS_13MemoryManagerE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717IconvTransServiceE = dso_local constant [35 x i8] c"N11xercesc_2_717IconvTransServiceE\00", align 1
@_ZTIN11xercesc_2_715XMLTransServiceE = external constant ptr
@_ZTIN11xercesc_2_717IconvTransServiceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717IconvTransServiceE, ptr @_ZTIN11xercesc_2_715XMLTransServiceE }, align 8
@_ZTSN11xercesc_2_718IconvLCPTranscoderE = dso_local constant [36 x i8] c"N11xercesc_2_718IconvLCPTranscoderE\00", align 1
@_ZTIN11xercesc_2_716XMLLCPTranscoderE = external constant ptr
@_ZTIN11xercesc_2_718IconvLCPTranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718IconvLCPTranscoderE, ptr @_ZTIN11xercesc_2_716XMLLCPTranscoderE }, align 8

@_ZN11xercesc_2_717IconvTransServiceC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717IconvTransServiceC2Ev
@_ZN11xercesc_2_717IconvTransServiceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717IconvTransServiceD2Ev
@_ZN11xercesc_2_718IconvLCPTranscoderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718IconvLCPTranscoderC2Ev
@_ZN11xercesc_2_718IconvLCPTranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718IconvLCPTranscoderD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717IconvTransServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_715XMLTransServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_717IconvTransServiceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XMLTransServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715XMLTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717IconvTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_715XMLTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717IconvTransServiceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_717IconvTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717IconvTransService14compareIStringEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 !prof !53 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi ptr [ %2, %3 ], [ %20, %13 ]
  %6 = phi ptr [ %1, %3 ], [ %19, %13 ]
  %7 = load i16, ptr %6, align 2, !tbaa !54
  %8 = zext i16 %7 to i32
  %9 = icmp eq i16 %7, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %5, align 2, !tbaa !54
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @towupper(i32 noundef %8) #13
  %15 = load i16, ptr %5, align 2, !tbaa !54
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @towupper(i32 noundef %16) #13
  %18 = icmp eq i32 %14, %17
  %19 = getelementptr inbounds i16, ptr %6, i64 1
  %20 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %18, label %4, label %21

21:                                               ; preds = %13
  %22 = load i16, ptr %6, align 2, !tbaa !54
  %23 = zext i16 %22 to i32
  br label %24

24:                                               ; preds = %4, %10, %21
  %25 = phi i32 [ %23, %21 ], [ 0, %4 ], [ %8, %10 ]
  %26 = tail call i32 @towupper(i32 noundef %25) #13
  %27 = load i16, ptr %5, align 2, !tbaa !54
  %28 = zext i16 %27 to i32
  %29 = tail call i32 @towupper(i32 noundef %28) #13
  %30 = sub i32 %26, %29
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @towupper(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717IconvTransService15compareNIStringEPKtS2_j(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 align 2 !prof !53 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %4, %22
  %7 = phi ptr [ %25, %22 ], [ %1, %4 ]
  %8 = phi ptr [ %26, %22 ], [ %2, %4 ]
  %9 = phi i32 [ %27, %22 ], [ 0, %4 ]
  %10 = load i16, ptr %7, align 2, !tbaa !54
  %11 = zext i16 %10 to i32
  %12 = tail call i32 @towupper(i32 noundef %11) #13
  %13 = load i16, ptr %8, align 2, !tbaa !54
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @towupper(i32 noundef %14) #13
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = sub i32 %12, %15
  br label %30

19:                                               ; preds = %6
  %20 = load i16, ptr %7, align 2, !tbaa !54
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i16, ptr %8, align 2, !tbaa !54
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds i16, ptr %7, i64 1
  %26 = getelementptr inbounds i16, ptr %8, i64 1
  %27 = add nuw i32 %9, 1
  %28 = icmp eq i32 %27, %3
  %29 = select i1 %24, i1 true, i1 %28
  br i1 %29, label %30, label %6

30:                                               ; preds = %22, %19, %4, %17
  %31 = phi i32 [ %18, %17 ], [ 0, %4 ], [ 0, %19 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717IconvTransService5getIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !53 {
  ret ptr @_ZN11xercesc_2_7L12gMyServiceIdE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717IconvTransService7isSpaceEt(ptr nocapture nonnull readnone align 8 %0, i16 noundef zeroext %1) unnamed_addr #3 align 2 !prof !53 {
  %3 = zext i16 %1 to i32
  %4 = tail call i32 @iswspace(i32 noundef %3) #13
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind optsize
declare i32 @iswspace(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #12
  invoke void @_ZN11xercesc_2_718IconvLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %2) #13
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717IconvTransService14supportsSrcOfsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !57 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_717IconvTransService20makeNewXMLTranscoderEPKtRNS_15XMLTransService5CodesEjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i32 %3, ptr nocapture readnone %4) unnamed_addr #6 align 2 !prof !53 {
  store i32 1, ptr %2, align 4, !tbaa !58
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK11xercesc_2_717IconvTransService9upperCaseEPt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef %1) unnamed_addr #3 align 2 !prof !53 {
  %3 = load i16, ptr %1, align 2, !tbaa !54
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %12, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %11, %5 ], [ %1, %2 ]
  %8 = zext i16 %6 to i32
  %9 = tail call i32 @towupper(i32 noundef %8) #13
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %7, align 2, !tbaa !54
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !54
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !60

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK11xercesc_2_717IconvTransService9lowerCaseEPt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef %1) unnamed_addr #3 align 2 !prof !53 {
  %3 = load i16, ptr %1, align 2, !tbaa !54
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %12, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %11, %5 ], [ %1, %2 ]
  %8 = zext i16 %6 to i32
  %9 = tail call i32 @towlower(i32 noundef %8) #13
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %7, align 2, !tbaa !54
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !54
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !62

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @towlower(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 !prof !63 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %21, label %5, !prof !64

5:                                                ; preds = %3
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9, !prof !65

9:                                                ; preds = %5, %17
  %10 = phi i32 [ %18, %17 ], [ 0, %5 ]
  %11 = phi i32 [ %19, %17 ], [ 0, %5 ]
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i64 @__ctype_get_mb_cur_max() #13
  %15 = tail call i32 @mblen(ptr noundef nonnull %13, i64 noundef %14) #13
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = add i32 %15, %10
  %19 = add i32 %11, 1
  %20 = icmp ult i32 %18, %7
  br i1 %20, label %9, label %21, !prof !66, !llvm.loop !67

21:                                               ; preds = %17, %9, %5, %3
  %22 = phi i32 [ 0, %3 ], [ 0, %5 ], [ %19, %17 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @mblen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !53 {
  %4 = alloca [1024 x i32], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L17getWideCharLengthEPKt(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %8 = icmp ugt i32 %7, 1023
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = add i32 %7, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = load ptr, ptr %2, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #12
  br label %19

17:                                               ; preds = %6
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9, %17
  %20 = phi ptr [ %16, %9 ], [ %4, %17 ]
  %21 = phi ptr [ %16, %9 ], [ null, %17 ]
  %22 = zext i32 %7 to i64
  br label %35

23:                                               ; preds = %35, %17
  %24 = phi ptr [ %4, %17 ], [ %20, %35 ]
  %25 = phi ptr [ null, %17 ], [ %21, %35 ]
  %26 = phi i64 [ 0, %17 ], [ %22, %35 ]
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  store i32 0, ptr %27, align 4, !tbaa !68
  %28 = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %24, i64 noundef 0) #13
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr %2, align 8, !tbaa !50
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %25) #12
  %33 = icmp eq i32 %29, -1
  %34 = select i1 %33, i32 0, i32 %29
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  br label %43

35:                                               ; preds = %19, %35
  %36 = phi i64 [ 0, %19 ], [ %41, %35 ]
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !54
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds i32, ptr %20, i64 %36
  store i32 %39, ptr %40, align 4, !tbaa !68
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %22
  br i1 %42, label %23, label %35, !llvm.loop !70

43:                                               ; preds = %3, %23
  %44 = phi i32 [ %34, %23 ], [ 0, %3 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L17getWideCharLengthEPKt(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !71 !PGOFuncName !72 {
  %2 = load i16, ptr %0, align 2, !tbaa !54
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %11, label %4, !prof !73

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %7 = getelementptr inbounds i16, ptr %5, i64 1
  %8 = add i32 %6, 1
  %9 = load i16, ptr %7, align 2, !tbaa !54
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %4, !prof !74, !llvm.loop !75

11:                                               ; preds = %4, %1
  %12 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind optsize
declare i64 @wcstombs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKt(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = alloca [1024 x i32], align 16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %1, align 2, !tbaa !54
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L17getWideCharLengthEPKt(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  %10 = icmp ugt i32 %9, 1023
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = add i32 %9, 1
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #16
  br label %18

16:                                               ; preds = %8
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11, %16
  %19 = phi ptr [ %15, %11 ], [ %3, %16 ]
  %20 = phi ptr [ %15, %11 ], [ null, %16 ]
  %21 = zext i32 %9 to i64
  br label %29

22:                                               ; preds = %29, %16
  %23 = phi ptr [ %3, %16 ], [ %19, %29 ]
  %24 = phi ptr [ null, %16 ], [ %20, %29 ]
  %25 = phi i64 [ 0, %16 ], [ %21, %29 ]
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 0, ptr %26, align 4, !tbaa !68
  %27 = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %23, i64 noundef 0) #13
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %37, label %42

29:                                               ; preds = %18, %29
  %30 = phi i64 [ 0, %18 ], [ %35, %29 ]
  %31 = getelementptr inbounds i16, ptr %1, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !54
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds i32, ptr %19, i64 %30
  store i32 %33, ptr %34, align 4, !tbaa !68
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, %21
  br i1 %36, label %22, label %29, !llvm.loop !76

37:                                               ; preds = %22
  %38 = icmp eq ptr %24, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  call void @_ZdaPv(ptr noundef nonnull %24) #17
  br label %40

40:                                               ; preds = %39, %37
  %41 = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #16
  store i8 0, ptr %41, align 1, !tbaa !77
  br label %49

42:                                               ; preds = %22
  %43 = add nuw i64 %27, 1
  %44 = call noalias noundef nonnull ptr @_Znam(i64 noundef %43) #16
  %45 = call i64 @wcstombs(ptr noundef nonnull %44, ptr noundef nonnull %23, i64 noundef %27) #13
  %46 = getelementptr inbounds i8, ptr %44, i64 %27
  store i8 0, ptr %46, align 1, !tbaa !77
  %47 = icmp eq ptr %24, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  call void @_ZdaPv(ptr noundef nonnull %24) #17
  br label %49

49:                                               ; preds = %42, %48, %40
  %50 = phi ptr [ %41, %40 ], [ %44, %48 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  br label %53

51:                                               ; preds = %5
  %52 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #16
  store i8 0, ptr %52, align 1, !tbaa !77
  br label %53

53:                                               ; preds = %49, %51, %2
  %54 = phi ptr [ null, %2 ], [ %52, %51 ], [ %50, %49 ]
  ret ptr %54
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !71 {
  %4 = alloca [1024 x i32], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %67, label %6, !prof !78

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !54
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %62, label %9, !prof !78

9:                                                ; preds = %6
  %10 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L17getWideCharLengthEPKt(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %11 = icmp ugt i32 %10, 1023
  br i1 %11, label %12, label %20, !prof !78

12:                                               ; preds = %9
  %13 = add i32 %10, 1
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = load ptr, ptr %2, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %15) #12
  br label %22

20:                                               ; preds = %9
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %26, label %22, !prof !79

22:                                               ; preds = %12, %20
  %23 = phi ptr [ %19, %12 ], [ %4, %20 ]
  %24 = phi ptr [ %19, %12 ], [ null, %20 ]
  %25 = zext i32 %10 to i64
  br label %33

26:                                               ; preds = %33, %20
  %27 = phi ptr [ %4, %20 ], [ %23, %33 ]
  %28 = phi ptr [ null, %20 ], [ %24, %33 ]
  %29 = phi i64 [ 0, %20 ], [ %25, %33 ]
  %30 = getelementptr inbounds i32, ptr %27, i64 %29
  store i32 0, ptr %30, align 4, !tbaa !68
  %31 = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %27, i64 noundef 0) #13
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %41, label %49, !prof !78

33:                                               ; preds = %22, %33
  %34 = phi i64 [ 0, %22 ], [ %39, %33 ]
  %35 = getelementptr inbounds i16, ptr %1, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !54
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds i32, ptr %23, i64 %34
  store i32 %37, ptr %38, align 4, !tbaa !68
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, %25
  br i1 %40, label %26, label %33, !prof !74, !llvm.loop !80

41:                                               ; preds = %26
  %42 = load ptr, ptr %2, align 8, !tbaa !50
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  call void %44(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %28) #12
  %45 = load ptr, ptr %2, align 8, !tbaa !50
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1) #12
  store i8 0, ptr %48, align 1, !tbaa !77
  br label %60

49:                                               ; preds = %26
  %50 = add nuw i64 %31, 1
  %51 = load ptr, ptr %2, align 8, !tbaa !50
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %50) #12
  %55 = call i64 @wcstombs(ptr noundef %54, ptr noundef nonnull %27, i64 noundef %31) #13
  %56 = getelementptr inbounds i8, ptr %54, i64 %31
  store i8 0, ptr %56, align 1, !tbaa !77
  %57 = load ptr, ptr %2, align 8, !tbaa !50
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %28) #12
  br label %60

60:                                               ; preds = %49, %41
  %61 = phi ptr [ %48, %41 ], [ %54, %49 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  br label %67

62:                                               ; preds = %6
  %63 = load ptr, ptr %2, align 8, !tbaa !50
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1) #12
  store i8 0, ptr %66, align 1, !tbaa !77
  br label %67

67:                                               ; preds = %60, %62, %3
  %68 = phi ptr [ null, %3 ], [ %66, %62 ], [ %61, %60 ]
  ret ptr %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPcjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !53 {
  %6 = alloca [1024 x i32], align 16
  %7 = icmp ne ptr %1, null
  %8 = icmp ne i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i8 0, ptr %2, align 1, !tbaa !77
  br label %54

11:                                               ; preds = %5
  %12 = load i16, ptr %1, align 2, !tbaa !54
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !tbaa !77
  br label %54

15:                                               ; preds = %11
  %16 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L17getWideCharLengthEPKt(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %3)
  %18 = icmp ugt i32 %3, 1023
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = add i32 %3, 1
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = load ptr, ptr %4, align 8, !tbaa !50
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %22) #12
  br label %27

27:                                               ; preds = %15, %19
  %28 = phi ptr [ %26, %19 ], [ null, %15 ]
  %29 = phi ptr [ %26, %19 ], [ %6, %15 ]
  %30 = icmp eq i32 %16, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @llvm.umax.i32(i32 %17, i32 1)
  %33 = zext i32 %32 to i64
  br label %40

34:                                               ; preds = %40, %27
  %35 = zext i32 %17 to i64
  %36 = getelementptr inbounds i32, ptr %29, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !68
  %37 = zext i32 %3 to i64
  %38 = call i64 @wcstombs(ptr noundef %2, ptr noundef %29, i64 noundef %37) #13
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %48, label %50

40:                                               ; preds = %31, %40
  %41 = phi i64 [ 0, %31 ], [ %46, %40 ]
  %42 = getelementptr inbounds i16, ptr %1, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !54
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds i32, ptr %29, i64 %41
  store i32 %44, ptr %45, align 4, !tbaa !68
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %33
  br i1 %47, label %34, label %40, !llvm.loop !81

48:                                               ; preds = %34
  %49 = getelementptr inbounds i8, ptr %2, i64 %38
  store i8 0, ptr %49, align 1, !tbaa !77
  br label %50

50:                                               ; preds = %34, %48
  %51 = load ptr, ptr %4, align 8, !tbaa !50
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  call void %53(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %28) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  br label %54

54:                                               ; preds = %50, %14, %10
  %55 = phi i1 [ %39, %50 ], [ true, %14 ], [ true, %10 ]
  ret i1 %55
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !53 {
  %3 = alloca [1024 x i32], align 16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !77
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  %10 = load ptr, ptr %0, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %9) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znam(i64 noundef 2) #16
  store i16 0, ptr %16, align 2, !tbaa !54
  br label %47

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #15
  %18 = icmp ugt i32 %13, 1023
  %19 = add i32 %13, 1
  %20 = zext i32 %19 to i64
  br i1 %18, label %21, label %24

21:                                               ; preds = %17
  %22 = shl nuw nsw i64 %20, 2
  %23 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %22) #16
  br label %24

24:                                               ; preds = %17, %21
  %25 = phi ptr [ %23, %21 ], [ null, %17 ]
  %26 = phi ptr [ %23, %21 ], [ %3, %17 ]
  %27 = zext i32 %13 to i64
  %28 = call i64 @mbstowcs(ptr noundef nonnull %26, ptr noundef nonnull %1, i64 noundef %27) #13
  %29 = shl nuw nsw i64 %20, 1
  %30 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #16
  %31 = zext i32 %13 to i64
  br label %35

32:                                               ; preds = %35
  %33 = getelementptr inbounds i16, ptr %30, i64 %27
  store i16 0, ptr %33, align 2, !tbaa !54
  %34 = icmp eq ptr %25, null
  br i1 %34, label %44, label %43

35:                                               ; preds = %24, %35
  %36 = phi i64 [ 0, %24 ], [ %41, %35 ]
  %37 = getelementptr inbounds i32, ptr %26, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !68
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds i16, ptr %30, i64 %36
  store i16 %39, ptr %40, align 2, !tbaa !54
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %31
  br i1 %42, label %32, label %35, !llvm.loop !84

43:                                               ; preds = %32
  call void @_ZdaPv(ptr noundef nonnull %25) #17
  br label %44

44:                                               ; preds = %43, %32
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #15
  br label %47

45:                                               ; preds = %5
  %46 = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znam(i64 noundef 2) #16
  store i16 0, ptr %46, align 2, !tbaa !54
  br label %47

47:                                               ; preds = %15, %44, %45, %2
  %48 = phi ptr [ null, %2 ], [ %46, %45 ], [ %16, %15 ], [ %30, %44 ]
  ret ptr %48
}

; Function Attrs: nounwind optsize
declare i64 @mbstowcs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !85 {
  %4 = alloca [1024 x i32], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %59, label %6, !prof !86

6:                                                ; preds = %3
  %7 = load i8, ptr %1, align 1, !tbaa !77
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9, !prof !86

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %2) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !86

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2) #12
  store i16 0, ptr %19, align 2, !tbaa !54
  br label %59

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  %21 = icmp ugt i32 %13, 1023
  %22 = add i32 %13, 1
  %23 = zext i32 %22 to i64
  br i1 %21, label %24, label %30, !prof !86

24:                                               ; preds = %20
  %25 = shl nuw nsw i64 %23, 2
  %26 = load ptr, ptr %2, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %25) #12
  br label %30

30:                                               ; preds = %20, %24
  %31 = phi ptr [ %29, %24 ], [ null, %20 ]
  %32 = phi ptr [ %29, %24 ], [ %4, %20 ]
  %33 = zext i32 %13 to i64
  %34 = call i64 @mbstowcs(ptr noundef %32, ptr noundef nonnull %1, i64 noundef %33) #13
  %35 = shl nuw nsw i64 %23, 1
  %36 = load ptr, ptr %2, align 8, !tbaa !50
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %35) #12
  %40 = zext i32 %13 to i64
  br label %46

41:                                               ; preds = %46
  %42 = getelementptr inbounds i16, ptr %39, i64 %33
  store i16 0, ptr %42, align 2, !tbaa !54
  %43 = load ptr, ptr %2, align 8, !tbaa !50
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %31) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  br label %59

46:                                               ; preds = %30, %46
  %47 = phi i64 [ 0, %30 ], [ %52, %46 ]
  %48 = getelementptr inbounds i32, ptr %32, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !68
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds i16, ptr %39, i64 %47
  store i16 %50, ptr %51, align 2, !tbaa !54
  %52 = add nuw nsw i64 %47, 1
  %53 = icmp eq i64 %52, %40
  br i1 %53, label %41, label %46, !prof !87, !llvm.loop !88

54:                                               ; preds = %6
  %55 = load ptr, ptr %2, align 8, !tbaa !50
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2) #12
  store i16 0, ptr %58, align 2, !tbaa !54
  br label %59

59:                                               ; preds = %15, %41, %54, %3
  %60 = phi ptr [ null, %3 ], [ %58, %54 ], [ %19, %15 ], [ %39, %41 ]
  ret ptr %60
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !89 {
  %6 = alloca [1024 x i32], align 16
  %7 = icmp ne ptr %1, null
  %8 = icmp ne i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10, !prof !90

10:                                               ; preds = %5
  store i16 0, ptr %2, align 2, !tbaa !54
  br label %57

11:                                               ; preds = %5
  %12 = load i8, ptr %1, align 1, !tbaa !77
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !91

14:                                               ; preds = %11
  store i16 0, ptr %2, align 2, !tbaa !54
  br label %57

15:                                               ; preds = %11
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !82
  %17 = load ptr, ptr %0, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %16) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %3)
  %22 = icmp ugt i32 %3, 1023
  br i1 %22, label %23, label %31, !prof !91

23:                                               ; preds = %15
  %24 = add i32 %3, 1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = load ptr, ptr %4, align 8, !tbaa !50
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %26) #12
  br label %31

31:                                               ; preds = %15, %23
  %32 = phi ptr [ %30, %23 ], [ null, %15 ]
  %33 = phi ptr [ %30, %23 ], [ %6, %15 ]
  %34 = zext i32 %3 to i64
  %35 = call i64 @mbstowcs(ptr noundef %33, ptr noundef nonnull %1, i64 noundef %34) #13
  %36 = icmp ne i64 %35, -1
  br i1 %36, label %37, label %53, !prof !92

37:                                               ; preds = %31
  %38 = icmp eq i32 %20, 0
  br i1 %38, label %42, label %39, !prof !93

39:                                               ; preds = %37
  %40 = call i32 @llvm.umax.i32(i32 %21, i32 1)
  %41 = zext i32 %40 to i64
  br label %45

42:                                               ; preds = %45, %37
  %43 = zext i32 %21 to i64
  %44 = getelementptr inbounds i16, ptr %2, i64 %43
  store i16 0, ptr %44, align 2, !tbaa !54
  br label %53

45:                                               ; preds = %39, %45
  %46 = phi i64 [ 0, %39 ], [ %51, %45 ]
  %47 = getelementptr inbounds i32, ptr %33, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !68
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds i16, ptr %2, i64 %46
  store i16 %49, ptr %50, align 2, !tbaa !54
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %41
  br i1 %52, label %42, label %45, !prof !94, !llvm.loop !95

53:                                               ; preds = %31, %42
  %54 = load ptr, ptr %4, align 8, !tbaa !50
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  call void %56(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  br label %57

57:                                               ; preds = %53, %14, %10
  %58 = phi i1 [ %36, %53 ], [ true, %14 ], [ true, %10 ]
  ret i1 %58
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718IconvLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_718IconvLCPTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718IconvLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718IconvLCPTranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_718IconvLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715XMLTransService16initTransServiceEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { builtin optsize allocsize(0) }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xercesc_2_717IconvTransServiceC2Ev, ptr @_ZN11xercesc_2_715XMLTransServiceC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717IconvTransServiceD2Ev, ptr @_ZN11xercesc_2_715XMLTransServiceD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv, ptr @_ZN11xercesc_2_718IconvLCPTranscoderC2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @strlen, i64 151}
!40 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @__ctype_get_mb_cur_max, i64 1493}
!41 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @mblen, i64 1493}
!42 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_7L17getWideCharLengthEPKt, i64 25}
!43 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPNS_13MemoryManagerE, ptr @wcstombs, i64 49}
!44 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPNS_13MemoryManagerE, ptr @mbstowcs, i64 4}
!45 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPtjPNS_13MemoryManagerE, ptr @mbstowcs, i64 143}
!46 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoderC2Ev, ptr @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoderD2Ev, ptr @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev, i64 1}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 1}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!"function_entry_count", i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !56, i64 0}
!56 = !{!"omnipotent char", !52, i64 0}
!57 = !{!"function_entry_count", i64 3}
!58 = !{!59, !59, i64 0}
!59 = !{!"_ZTSN11xercesc_2_715XMLTransService5CodesE", !56, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = !{!"function_entry_count", i64 152}
!64 = !{!"branch_weights", i32 1, i32 153}
!65 = !{!"branch_weights", i32 1, i32 152}
!66 = !{!"branch_weights", i32 1975, i32 152}
!67 = distinct !{!67, !61}
!68 = !{!69, !69, i64 0}
!69 = !{!"wchar_t", !56, i64 0}
!70 = distinct !{!70, !61}
!71 = !{!"function_entry_count", i64 27}
!72 = !{!"IconvTransService.cpp:_ZN11xercesc_2_7L17getWideCharLengthEPKt"}
!73 = !{!"branch_weights", i32 1, i32 223}
!74 = !{!"branch_weights", i32 223, i32 2449}
!75 = distinct !{!75, !61}
!76 = distinct !{!76, !61}
!77 = !{!56, !56, i64 0}
!78 = !{!"branch_weights", i32 1, i32 28}
!79 = !{!"branch_weights", i32 9929373, i32 2137554275}
!80 = distinct !{!80, !61}
!81 = distinct !{!81, !61}
!82 = !{!83, !83, i64 0}
!83 = !{!"any pointer", !56, i64 0}
!84 = distinct !{!84, !61}
!85 = !{!"function_entry_count", i64 6}
!86 = !{!"branch_weights", i32 1, i32 7}
!87 = !{!"branch_weights", i32 7, i32 550}
!88 = distinct !{!88, !61}
!89 = !{!"function_entry_count", i64 146}
!90 = !{!"branch_weights", i32 21609, i32 295}
!91 = !{!"branch_weights", i32 1, i32 147}
!92 = !{!"branch_weights", i32 147, i32 1}
!93 = !{!"branch_weights", i32 1, i32 146}
!94 = !{!"branch_weights", i32 146, i32 1422}
!95 = distinct !{!95, !61}
