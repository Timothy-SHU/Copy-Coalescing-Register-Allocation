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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717IconvTransServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_715XMLTransServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_717IconvTransServiceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  ret void
}

declare void @_ZN11xercesc_2_715XMLTransServiceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715XMLTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717IconvTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_715XMLTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717IconvTransServiceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_715XMLTransServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717IconvTransService14compareIStringEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 !prof !55 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi ptr [ %2, %3 ], [ %20, %13 ]
  %6 = phi ptr [ %1, %3 ], [ %21, %13 ]
  %7 = load i16, ptr %6, align 2, !tbaa !56
  %8 = zext i16 %7 to i32
  %9 = icmp eq i16 %7, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %5, align 2, !tbaa !56
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @towupper(i32 noundef %8) #13
  %15 = load i16, ptr %5, align 2, !tbaa !56
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @towupper(i32 noundef %16) #13
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i64
  %20 = getelementptr inbounds i16, ptr %5, i64 %19
  %21 = getelementptr inbounds i16, ptr %6, i64 %19
  br i1 %18, label %4, label %22

22:                                               ; preds = %13, %4, %10
  %23 = phi ptr [ %5, %10 ], [ %5, %4 ], [ %20, %13 ]
  %24 = phi ptr [ %6, %10 ], [ %6, %4 ], [ %21, %13 ]
  %25 = load i16, ptr %24, align 2, !tbaa !56
  %26 = zext i16 %25 to i32
  %27 = tail call i32 @towupper(i32 noundef %26) #13
  %28 = load i16, ptr %23, align 2, !tbaa !56
  %29 = zext i16 %28 to i32
  %30 = tail call i32 @towupper(i32 noundef %29) #13
  %31 = sub i32 %27, %30
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare i32 @towupper(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717IconvTransService15compareNIStringEPKtS2_j(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 align 2 !prof !55 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %4, %32
  %7 = phi ptr [ %33, %32 ], [ %1, %4 ]
  %8 = phi ptr [ %34, %32 ], [ %2, %4 ]
  %9 = phi i32 [ %35, %32 ], [ 0, %4 ]
  %10 = phi i32 [ %36, %32 ], [ undef, %4 ]
  %11 = load i16, ptr %7, align 2, !tbaa !56
  %12 = zext i16 %11 to i32
  %13 = tail call i32 @towupper(i32 noundef %12) #13
  %14 = load i16, ptr %8, align 2, !tbaa !56
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @towupper(i32 noundef %15) #13
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %6
  %19 = sub i32 %13, %16
  br label %32

20:                                               ; preds = %6
  %21 = load i16, ptr %7, align 2, !tbaa !56
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i16, ptr %8, align 2, !tbaa !56
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i16, ptr %7, i64 1
  %28 = getelementptr inbounds i16, ptr %8, i64 1
  %29 = add i32 %9, 1
  %30 = icmp eq i32 %29, %3
  %31 = select i1 %30, i32 3, i32 0
  br label %32

32:                                               ; preds = %26, %20, %23, %18
  %33 = phi ptr [ %7, %18 ], [ %7, %23 ], [ %7, %20 ], [ %27, %26 ]
  %34 = phi ptr [ %8, %18 ], [ %8, %23 ], [ %8, %20 ], [ %28, %26 ]
  %35 = phi i32 [ %9, %18 ], [ %9, %23 ], [ %9, %20 ], [ %29, %26 ]
  %36 = phi i32 [ %19, %18 ], [ %10, %23 ], [ %10, %20 ], [ %10, %26 ]
  %37 = phi i32 [ 1, %18 ], [ 3, %23 ], [ 3, %20 ], [ %31, %26 ]
  switch i32 %37, label %39 [
    i32 0, label %6
    i32 3, label %38
  ], !llvm.loop !59

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %32, %38, %4
  %40 = phi i32 [ 0, %4 ], [ 0, %38 ], [ %36, %32 ]
  ret i32 %40
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717IconvTransService5getIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !55 {
  ret ptr @_ZN11xercesc_2_7L12gMyServiceIdE
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717IconvTransService7isSpaceEt(ptr nocapture nonnull readnone align 8 %0, i16 noundef zeroext %1) unnamed_addr #3 align 2 !prof !55 {
  %3 = zext i16 %1 to i32
  %4 = tail call i32 @iswspace(i32 noundef %3) #13
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind
declare i32 @iswspace(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  invoke void @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %3 unwind label %4, !prof !62

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_718IconvLCPTranscoderE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !52
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %2) #13
  resume { ptr, i32 } %5
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717IconvTransService14supportsSrcOfsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !63 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_717IconvTransService20makeNewXMLTranscoderEPKtRNS_15XMLTransService5CodesEjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i32 %3, ptr nocapture readnone %4) unnamed_addr #6 align 2 !prof !55 {
  store i32 1, ptr %2, align 4, !tbaa !64
  ret ptr null
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZNK11xercesc_2_717IconvTransService9upperCaseEPt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef %1) unnamed_addr #3 align 2 !prof !55 {
  %3 = load i16, ptr %1, align 2, !tbaa !56
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %12, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %11, %5 ], [ %1, %2 ]
  %8 = zext i16 %6 to i32
  %9 = tail call i32 @towupper(i32 noundef %8) #13
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %7, align 2, !tbaa !56
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !56
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !66

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZNK11xercesc_2_717IconvTransService9lowerCaseEPt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef %1) unnamed_addr #3 align 2 !prof !55 {
  %3 = load i16, ptr %1, align 2, !tbaa !56
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2, %5
  %6 = phi i16 [ %12, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %11, %5 ], [ %1, %2 ]
  %8 = zext i16 %6 to i32
  %9 = tail call i32 @towlower(i32 noundef %8) #13
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %7, align 2, !tbaa !56
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !56
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !67

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind
declare i32 @towlower(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 !prof !68 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %21, label %5, !prof !69

5:                                                ; preds = %3
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9, !prof !70

9:                                                ; preds = %5, %17
  %10 = phi i32 [ %18, %17 ], [ 0, %5 ]
  %11 = phi i32 [ %19, %17 ], [ 0, %5 ]
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i64 @__ctype_get_mb_cur_max() #13
  %15 = tail call i32 @mblen(ptr noundef nonnull %13, i64 noundef %14) #13
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %21, label %17, !prof !71

17:                                               ; preds = %9
  %18 = add i32 %15, %10
  %19 = add i32 %11, 1
  %20 = icmp ult i32 %18, %7
  br i1 %20, label %9, label %21, !prof !72, !llvm.loop !73

21:                                               ; preds = %17, %9, %5, %3
  %22 = phi i32 [ 0, %3 ], [ 0, %5 ], [ 0, %9 ], [ %19, %17 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @mblen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !55 {
  %4 = alloca [1024 x i32], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !56
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %1, %6 ]
  %11 = phi i32 [ %13, %9 ], [ 0, %6 ]
  %12 = getelementptr inbounds i16, ptr %10, i64 1
  %13 = add i32 %11, 1
  %14 = load i16, ptr %12, align 2, !tbaa !56
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %9, !llvm.loop !74

16:                                               ; preds = %9, %6
  %17 = phi i32 [ 0, %6 ], [ %13, %9 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %18 = icmp ugt i32 %17, 1023
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = add i32 %17, 1
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = load ptr, ptr %2, align 8, !tbaa !52
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %22)
  br label %27

27:                                               ; preds = %16, %19
  %28 = phi ptr [ %26, %19 ], [ null, %16 ]
  %29 = phi ptr [ %26, %19 ], [ %4, %16 ]
  %30 = icmp eq i32 %17, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = zext i32 %17 to i64
  br label %43

33:                                               ; preds = %43, %27
  %34 = zext i32 %17 to i64
  %35 = getelementptr inbounds i32, ptr %29, i64 %34
  store i32 0, ptr %35, align 4, !tbaa !75
  %36 = call i64 @wcstombs(ptr noundef null, ptr noundef %29, i64 noundef 0) #13
  %37 = trunc i64 %36 to i32
  %38 = load ptr, ptr %2, align 8, !tbaa !52
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %28)
  %41 = icmp eq i32 %37, -1
  %42 = select i1 %41, i32 0, i32 %37
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  br label %51

43:                                               ; preds = %31, %43
  %44 = phi i64 [ 0, %31 ], [ %49, %43 ]
  %45 = getelementptr inbounds i16, ptr %1, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !56
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds i32, ptr %29, i64 %44
  store i32 %47, ptr %48, align 4, !tbaa !75
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp eq i64 %49, %32
  br i1 %50, label %33, label %43, !llvm.loop !77

51:                                               ; preds = %3, %33
  %52 = phi i32 [ %42, %33 ], [ 0, %3 ]
  ret i32 %52
}

; Function Attrs: nounwind
declare i64 @wcstombs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKt(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1) unnamed_addr #0 align 2 !prof !55 {
  %3 = alloca [1024 x i32], align 16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %61, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %1, align 2, !tbaa !56
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %5
  %9 = load i16, ptr %1, align 2, !tbaa !56
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %14, %11 ], [ %1, %8 ]
  %13 = phi i32 [ %15, %11 ], [ 0, %8 ]
  %14 = getelementptr inbounds i16, ptr %12, i64 1
  %15 = add i32 %13, 1
  %16 = load i16, ptr %14, align 2, !tbaa !56
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %11, !llvm.loop !74

18:                                               ; preds = %11, %8
  %19 = phi i32 [ 0, %8 ], [ %15, %11 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %20 = icmp ugt i32 %19, 1023
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = add i32 %19, 1
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 2
  %25 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %24) #15
  br label %26

26:                                               ; preds = %18, %21
  %27 = phi ptr [ %25, %21 ], [ null, %18 ]
  %28 = phi ptr [ %25, %21 ], [ %3, %18 ]
  %29 = icmp eq i32 %19, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = zext i32 %19 to i64
  br label %37

32:                                               ; preds = %37, %26
  %33 = zext i32 %19 to i64
  %34 = getelementptr inbounds i32, ptr %28, i64 %33
  store i32 0, ptr %34, align 4, !tbaa !75
  %35 = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %28, i64 noundef 0) #13
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %45, label %50

37:                                               ; preds = %30, %37
  %38 = phi i64 [ 0, %30 ], [ %43, %37 ]
  %39 = getelementptr inbounds i16, ptr %1, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !56
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i32, ptr %28, i64 %38
  store i32 %41, ptr %42, align 4, !tbaa !75
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %31
  br i1 %44, label %32, label %37, !llvm.loop !78

45:                                               ; preds = %32
  %46 = icmp eq ptr %27, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  call void @_ZdaPv(ptr noundef %27) #16
  br label %48

48:                                               ; preds = %47, %45
  %49 = call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #15
  store i8 0, ptr %49, align 1, !tbaa !79
  br label %57

50:                                               ; preds = %32
  %51 = add nuw i64 %35, 1
  %52 = call noalias noundef nonnull ptr @_Znam(i64 noundef %51) #15
  %53 = call i64 @wcstombs(ptr noundef nonnull %52, ptr noundef nonnull %28, i64 noundef %35) #13
  %54 = getelementptr inbounds i8, ptr %52, i64 %35
  store i8 0, ptr %54, align 1, !tbaa !79
  %55 = icmp eq ptr %27, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  call void @_ZdaPv(ptr noundef %27) #16
  br label %57

57:                                               ; preds = %50, %56, %48
  %58 = phi ptr [ %49, %48 ], [ %52, %56 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  br label %61

59:                                               ; preds = %5
  %60 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #15
  store i8 0, ptr %60, align 1, !tbaa !79
  br label %61

61:                                               ; preds = %57, %59, %2
  %62 = phi ptr [ null, %2 ], [ %60, %59 ], [ %58, %57 ]
  ret ptr %62
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !80 {
  %4 = alloca [1024 x i32], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %75, label %6, !prof !81

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !56
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %70, label %9, !prof !81

9:                                                ; preds = %6
  %10 = load i16, ptr %1, align 2, !tbaa !56
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12, !prof !82

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %15, %12 ], [ %1, %9 ]
  %14 = phi i32 [ %16, %12 ], [ 0, %9 ]
  %15 = getelementptr inbounds i16, ptr %13, i64 1
  %16 = add i32 %14, 1
  %17 = load i16, ptr %15, align 2, !tbaa !56
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %12, !prof !83, !llvm.loop !74

19:                                               ; preds = %12, %9
  %20 = phi i32 [ 0, %9 ], [ %16, %12 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %21 = icmp ugt i32 %20, 1023
  br i1 %21, label %22, label %30, !prof !81

22:                                               ; preds = %19
  %23 = add i32 %20, 1
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = load ptr, ptr %2, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %25)
  br label %30

30:                                               ; preds = %19, %22
  %31 = phi ptr [ %29, %22 ], [ null, %19 ]
  %32 = phi ptr [ %29, %22 ], [ %4, %19 ]
  %33 = icmp eq i32 %20, 0
  br i1 %33, label %36, label %34, !prof !82

34:                                               ; preds = %30
  %35 = zext i32 %20 to i64
  br label %41

36:                                               ; preds = %41, %30
  %37 = zext i32 %20 to i64
  %38 = getelementptr inbounds i32, ptr %32, i64 %37
  store i32 0, ptr %38, align 4, !tbaa !75
  %39 = call i64 @wcstombs(ptr noundef null, ptr noundef %32, i64 noundef 0) #13
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %49, label %57, !prof !81

41:                                               ; preds = %34, %41
  %42 = phi i64 [ 0, %34 ], [ %47, %41 ]
  %43 = getelementptr inbounds i16, ptr %1, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !56
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds i32, ptr %32, i64 %42
  store i32 %45, ptr %46, align 4, !tbaa !75
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %35
  br i1 %48, label %36, label %41, !prof !83, !llvm.loop !84

49:                                               ; preds = %36
  %50 = load ptr, ptr %2, align 8, !tbaa !52
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  call void %52(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %31)
  %53 = load ptr, ptr %2, align 8, !tbaa !52
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  store i8 0, ptr %56, align 1, !tbaa !79
  br label %68

57:                                               ; preds = %36
  %58 = add nuw i64 %39, 1
  %59 = load ptr, ptr %2, align 8, !tbaa !52
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %58), !prof !85
  %63 = call i64 @wcstombs(ptr noundef %62, ptr noundef %32, i64 noundef %39) #13
  %64 = getelementptr inbounds i8, ptr %62, i64 %39
  store i8 0, ptr %64, align 1, !tbaa !79
  %65 = load ptr, ptr %2, align 8, !tbaa !52
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %31), !prof !86
  br label %68

68:                                               ; preds = %57, %49
  %69 = phi ptr [ %56, %49 ], [ %62, %57 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  br label %75

70:                                               ; preds = %6
  %71 = load ptr, ptr %2, align 8, !tbaa !52
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  store i8 0, ptr %74, align 1, !tbaa !79
  br label %75

75:                                               ; preds = %68, %70, %3
  %76 = phi ptr [ null, %3 ], [ %74, %70 ], [ %69, %68 ]
  ret ptr %76
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPcjPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !55 {
  %6 = alloca [1024 x i32], align 16
  %7 = icmp ne ptr %1, null
  %8 = icmp ne i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i8 0, ptr %2, align 1, !tbaa !79
  br label %64

11:                                               ; preds = %5
  %12 = load i16, ptr %1, align 2, !tbaa !56
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i16, ptr %1, align 2, !tbaa !56
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %18

17:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !tbaa !79
  br label %64

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %1, %14 ]
  %20 = phi i32 [ %22, %18 ], [ 0, %14 ]
  %21 = getelementptr inbounds i16, ptr %19, i64 1
  %22 = add i32 %20, 1
  %23 = load i16, ptr %21, align 2, !tbaa !56
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %18, !llvm.loop !74

25:                                               ; preds = %18, %14
  %26 = phi i32 [ 0, %14 ], [ %22, %18 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %3)
  %28 = icmp ugt i32 %3, 1023
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = add i32 %3, 1
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 2
  %33 = load ptr, ptr %4, align 8, !tbaa !52
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %32)
  br label %37

37:                                               ; preds = %25, %29
  %38 = phi ptr [ %36, %29 ], [ null, %25 ]
  %39 = phi ptr [ %36, %29 ], [ %6, %25 ]
  %40 = icmp eq i32 %26, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @llvm.umax.i32(i32 %27, i32 1)
  %43 = zext i32 %42 to i64
  br label %50

44:                                               ; preds = %50, %37
  %45 = zext i32 %27 to i64
  %46 = getelementptr inbounds i32, ptr %39, i64 %45
  store i32 0, ptr %46, align 4, !tbaa !75
  %47 = zext i32 %3 to i64
  %48 = call i64 @wcstombs(ptr noundef %2, ptr noundef %39, i64 noundef %47) #13
  %49 = icmp ne i64 %48, -1
  br i1 %49, label %58, label %60

50:                                               ; preds = %41, %50
  %51 = phi i64 [ 0, %41 ], [ %56, %50 ]
  %52 = getelementptr inbounds i16, ptr %1, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !56
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds i32, ptr %39, i64 %51
  store i32 %54, ptr %55, align 4, !tbaa !75
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %43
  br i1 %57, label %44, label %50, !llvm.loop !87

58:                                               ; preds = %44
  %59 = getelementptr inbounds i8, ptr %2, i64 %48
  store i8 0, ptr %59, align 1, !tbaa !79
  br label %60

60:                                               ; preds = %44, %58
  %61 = load ptr, ptr %4, align 8, !tbaa !52
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  call void %63(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %38)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  br label %64

64:                                               ; preds = %60, %17, %10
  %65 = phi i1 [ %49, %60 ], [ true, %17 ], [ true, %10 ]
  ret i1 %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !55 {
  %3 = alloca [1024 x i32], align 16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !79
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !88
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %9)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znam(i64 noundef 2) #15
  store i16 0, ptr %16, align 2, !tbaa !56
  br label %50

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #13
  %18 = icmp ugt i32 %13, 1023
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = add i32 %13, 1
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %22) #15
  br label %24

24:                                               ; preds = %17, %19
  %25 = phi ptr [ %23, %19 ], [ null, %17 ]
  %26 = phi ptr [ %23, %19 ], [ %3, %17 ]
  %27 = zext i32 %13 to i64
  %28 = call i64 @mbstowcs(ptr noundef nonnull %26, ptr noundef nonnull %1, i64 noundef %27) #13
  %29 = add i32 %13, 1
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 1
  %32 = call noalias noundef nonnull ptr @_Znam(i64 noundef %31) #15
  %33 = call i32 @llvm.umax.i32(i32 %13, i32 1)
  %34 = zext i32 %33 to i64
  br label %38

35:                                               ; preds = %38
  %36 = getelementptr inbounds i16, ptr %32, i64 %27
  store i16 0, ptr %36, align 2, !tbaa !56
  %37 = icmp eq ptr %25, null
  br i1 %37, label %47, label %46

38:                                               ; preds = %24, %38
  %39 = phi i64 [ 0, %24 ], [ %44, %38 ]
  %40 = getelementptr inbounds i32, ptr %26, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds i16, ptr %32, i64 %39
  store i16 %42, ptr %43, align 2, !tbaa !56
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, %34
  br i1 %45, label %35, label %38, !llvm.loop !90

46:                                               ; preds = %35
  call void @_ZdaPv(ptr noundef %25) #16
  br label %47

47:                                               ; preds = %46, %35
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #13
  br label %50

48:                                               ; preds = %5
  %49 = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znam(i64 noundef 2) #15
  store i16 0, ptr %49, align 2, !tbaa !56
  br label %50

50:                                               ; preds = %15, %47, %48, %2
  %51 = phi ptr [ null, %2 ], [ %49, %48 ], [ %16, %15 ], [ %32, %47 ]
  ret ptr %51
}

; Function Attrs: nounwind
declare i64 @mbstowcs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 align 2 !prof !91 {
  %4 = alloca [1024 x i32], align 16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %62, label %6, !prof !92

6:                                                ; preds = %3
  %7 = load i8, ptr %1, align 1, !tbaa !79
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %57, label %9, !prof !92

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !52
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %2), !prof !93
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !92

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2)
  store i16 0, ptr %19, align 2, !tbaa !56
  br label %62

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #13
  %21 = icmp ugt i32 %13, 1023
  br i1 %21, label %22, label %30, !prof !92

22:                                               ; preds = %20
  %23 = add i32 %13, 1
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = load ptr, ptr %2, align 8, !tbaa !52
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %25)
  br label %30

30:                                               ; preds = %20, %22
  %31 = phi ptr [ %29, %22 ], [ null, %20 ]
  %32 = phi ptr [ %29, %22 ], [ %4, %20 ]
  %33 = zext i32 %13 to i64
  %34 = call i64 @mbstowcs(ptr noundef %32, ptr noundef nonnull %1, i64 noundef %33) #13
  %35 = add i32 %13, 1
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %2, align 8, !tbaa !52
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %37), !prof !94
  %42 = call i32 @llvm.umax.i32(i32 %13, i32 1)
  %43 = zext i32 %42 to i64
  br label %49

44:                                               ; preds = %49
  %45 = getelementptr inbounds i16, ptr %41, i64 %33
  store i16 0, ptr %45, align 2, !tbaa !56
  %46 = load ptr, ptr %2, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %31), !prof !95
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #13
  br label %62

49:                                               ; preds = %30, %49
  %50 = phi i64 [ 0, %30 ], [ %55, %49 ]
  %51 = getelementptr inbounds i32, ptr %32, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !75
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds i16, ptr %41, i64 %50
  store i16 %53, ptr %54, align 2, !tbaa !56
  %55 = add nuw nsw i64 %50, 1
  %56 = icmp eq i64 %55, %43
  br i1 %56, label %44, label %49, !prof !96, !llvm.loop !97

57:                                               ; preds = %6
  %58 = load ptr, ptr %2, align 8, !tbaa !52
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2)
  store i16 0, ptr %61, align 2, !tbaa !56
  br label %62

62:                                               ; preds = %15, %44, %57, %3
  %63 = phi ptr [ null, %3 ], [ %61, %57 ], [ %19, %15 ], [ %41, %44 ]
  ret ptr %63
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #11 align 2 !prof !98 {
  %6 = alloca [1024 x i32], align 16
  %7 = icmp ne ptr %1, null
  %8 = icmp ne i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10, !prof !99

10:                                               ; preds = %5
  store i16 0, ptr %2, align 2, !tbaa !56
  br label %57

11:                                               ; preds = %5
  %12 = load i8, ptr %1, align 1, !tbaa !79
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !100

14:                                               ; preds = %11
  store i16 0, ptr %2, align 2, !tbaa !56
  br label %57

15:                                               ; preds = %11
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !88
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %16), !prof !101
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #13
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %3)
  %22 = icmp ugt i32 %3, 1023
  br i1 %22, label %23, label %31, !prof !100

23:                                               ; preds = %15
  %24 = add i32 %3, 1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = load ptr, ptr %4, align 8, !tbaa !52
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %26)
  br label %31

31:                                               ; preds = %15, %23
  %32 = phi ptr [ %30, %23 ], [ null, %15 ]
  %33 = phi ptr [ %30, %23 ], [ %6, %15 ]
  %34 = zext i32 %3 to i64
  %35 = call i64 @mbstowcs(ptr noundef %33, ptr noundef nonnull %1, i64 noundef %34) #13
  %36 = icmp ne i64 %35, -1
  br i1 %36, label %37, label %53, !prof !99

37:                                               ; preds = %31
  %38 = icmp eq i32 %20, 0
  br i1 %38, label %42, label %39, !prof !102

39:                                               ; preds = %37
  %40 = call i32 @llvm.umax.i32(i32 %21, i32 1)
  %41 = zext i32 %40 to i64
  br label %45

42:                                               ; preds = %45, %37
  %43 = zext i32 %21 to i64
  %44 = getelementptr inbounds i16, ptr %2, i64 %43
  store i16 0, ptr %44, align 2, !tbaa !56
  br label %53

45:                                               ; preds = %39, %45
  %46 = phi i64 [ 0, %39 ], [ %51, %45 ]
  %47 = getelementptr inbounds i32, ptr %33, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !75
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds i16, ptr %2, i64 %46
  store i16 %49, ptr %50, align 2, !tbaa !56
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %41
  br i1 %52, label %42, label %45, !prof !103, !llvm.loop !104

53:                                               ; preds = %31, %42
  %54 = load ptr, ptr %4, align 8, !tbaa !52
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  call void %56(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32), !prof !105
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #13
  br label %57

57:                                               ; preds = %53, %14, %10
  %58 = phi i1 [ %36, %53 ], [ true, %14 ], [ true, %10 ]
  ret i1 %58
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718IconvLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_718IconvLCPTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  ret void
}

declare void @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718IconvLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718IconvLCPTranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

declare void @_ZN11xercesc_2_715XMLTransService16initTransServiceEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_717IconvTransServiceC2Ev, ptr @_ZN11xercesc_2_715XMLTransServiceC2Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_717IconvTransServiceD0Ev, ptr @_ZN11xercesc_2_715XMLTransServiceD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_717IconvTransServiceD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 1}
!39 = !{ptr @_ZN11xercesc_2_717IconvTransService20makeNewLCPTranscoderEv, ptr @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @strlen, i64 152}
!41 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @__ctype_get_mb_cur_max, i64 2126}
!42 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, ptr @mblen, i64 2126}
!43 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKtPNS_13MemoryManagerE, ptr @wcstombs, i64 54}
!44 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, i64 6}
!45 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPNS_13MemoryManagerE, ptr @mbstowcs, i64 6}
!46 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IconvLCPTranscoder16calcRequiredSizeEPKcPNS_13MemoryManagerE, i64 146}
!47 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoder9transcodeEPKcPtjPNS_13MemoryManagerE, ptr @mbstowcs, i64 146}
!48 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoderD0Ev, ptr @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev, i64 1}
!49 = !{ptr @_ZN11xercesc_2_718IconvLCPTranscoderD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"short", !58, i64 0}
!58 = !{!"omnipotent char", !54, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!"branch_weights", i32 1, i32 0}
!63 = !{!"function_entry_count", i64 3}
!64 = !{!65, !65, i64 0}
!65 = !{!"_ZTSN11xercesc_2_715XMLTransService5CodesE", !58, i64 0}
!66 = distinct !{!66, !60, !61}
!67 = distinct !{!67, !60, !61}
!68 = !{!"function_entry_count", i64 152}
!69 = !{!"branch_weights", i32 0, i32 152}
!70 = !{!"branch_weights", i32 1, i32 151}
!71 = !{!"branch_weights", i32 0, i32 2126}
!72 = !{!"branch_weights", i32 1975, i32 151}
!73 = distinct !{!73, !60, !61}
!74 = distinct !{!74, !60, !61}
!75 = !{!76, !76, i64 0}
!76 = !{!"wchar_t", !58, i64 0}
!77 = distinct !{!77, !60, !61}
!78 = distinct !{!78, !60, !61}
!79 = !{!58, !58, i64 0}
!80 = !{!"function_entry_count", i64 27}
!81 = !{!"branch_weights", i32 0, i32 27}
!82 = !{!"branch_weights", i32 1, i32 215}
!83 = !{!"branch_weights", i32 215, i32 2449}
!84 = distinct !{!84, !60, !61}
!85 = !{!"VP", i32 0, i64 27, i64 8345045103670217670, i64 27}
!86 = !{!"VP", i32 0, i64 27, i64 -7405368087501025645, i64 27}
!87 = distinct !{!87, !60, !61}
!88 = !{!89, !89, i64 0}
!89 = !{!"any pointer", !58, i64 0}
!90 = distinct !{!90, !60, !61}
!91 = !{!"function_entry_count", i64 6}
!92 = !{!"branch_weights", i32 0, i32 6}
!93 = !{!"VP", i32 0, i64 6, i64 -9172138023522955256, i64 6}
!94 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!95 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!96 = !{!"branch_weights", i32 6, i32 550}
!97 = distinct !{!97, !60, !61}
!98 = !{!"function_entry_count", i64 146}
!99 = !{!"branch_weights", i32 146, i32 0}
!100 = !{!"branch_weights", i32 0, i32 146}
!101 = !{!"VP", i32 0, i64 146, i64 -9172138023522955256, i64 146}
!102 = !{!"branch_weights", i32 1, i32 145}
!103 = !{!"branch_weights", i32 145, i32 1422}
!104 = distinct !{!104, !60, !61}
!105 = !{!"VP", i32 0, i64 146, i64 -7405368087501025645, i64 146}
